import { Request, Response } from "express";
import { createGraphQLClient } from "./_utils/createClient";
import { gql } from "graphql-request";

// GraphQL mutation for inserting history
const INSERT_HISTORY = gql`
mutation insertHistory($object: store_product_prices_history_insert_input!) {
    insert_store_product_prices_history_one(object: $object) {
      id
    }
  }
`;

export default async (req: Request, res: Response) => {
  const { new: newData, old: oldData } = req.body.event.data;

  try {
    // Check if the new price_date is more recent than the old price_date
    if (new Date(newData.price_date) > new Date(oldData.price_date)) {
      // Perform the insertion into the history table
      const secret = "nhost-admin-secret"; // replace with your actual token
      const graphqlEndpoint = "https://local.hasura.nhost.run/v1/graphql";

      const client = createGraphQLClient(graphqlEndpoint, secret);
      let history_res = await client.request(INSERT_HISTORY, {
        object: {
          store_product_id: oldData.id,
          price: oldData.price,
          price_date: oldData.price_date,
        },
      });

      console.log({ history_res: JSON.stringify(history_res) });
    }

    // Send a successful response
    return res.status(201).json({
      /* Your success response goes here */
    });
  } catch (error) {
    console.error("Error processing request:", error);
    return res.status(500).json({
      message: "Server Error: " + error.message,
      status: 500,
      error,
    });
  }
};

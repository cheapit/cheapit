import { GraphQLClient } from "graphql-request";

// Function to initialize the GraphQL client
export function createGraphQLClient(
  endpoint: string,
  secret?: string
): GraphQLClient {
  const headers: HeadersInit = {};
  headers["X-Hasura-Admin-Secret"] = secret || "nhost-admin-secret";

  return new GraphQLClient(endpoint, { headers });
}

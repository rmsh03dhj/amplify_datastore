const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "gnmobilecustomer": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://koewv3sdjfh75ny2mcvo2n5w7a.appsync-api.ap-southeast-2.amazonaws.com/graphql",
                    "region": "ap-southeast-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-zv67djewpzecrbsxht2ki2peua"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://koewv3sdjfh75ny2mcvo2n5w7a.appsync-api.ap-southeast-2.amazonaws.com/graphql",
                        "Region": "ap-southeast-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-zv67djewpzecrbsxht2ki2peua",
                        "ClientDatabasePrefix": "gnmobilecustomer_API_KEY"
                    },
                    "gnmobilecustomer_AWS_IAM": {
                        "ApiUrl": "https://koewv3sdjfh75ny2mcvo2n5w7a.appsync-api.ap-southeast-2.amazonaws.com/graphql",
                        "Region": "ap-southeast-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "gnmobilecustomer_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-southeast-2:5cbaf2f1-a0f4-4cf1-9b11-80c08acdfaa4",
                            "Region": "ap-southeast-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-southeast-2_ZQA80gI30",
                        "AppClientId": "185ro6nr74j71b7lv6n8p1v3sl",
                        "Region": "ap-southeast-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "gnmobilecustomer8afd5d04-8afd5d04-dev.auth.ap-southeast-2.amazoncognito.com",
                            "AppClientId": "185ro6nr74j71b7lv6n8p1v3sl",
                            "SignInRedirectURI": "https://gimmenow.com/",
                            "SignOutRedirectURI": "https://gimmenow.com/",
                            "Scopes": [
                                "phone",
                                "email",
                                "openid",
                                "profile",
                                "aws.cognito.signin.user.admin"
                            ]
                        },
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                }
            }
        }
    }
}''';
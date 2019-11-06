require "rails_helper"

RSpec.describe "validate release", type: :request do
  it "saves a POSTed valid release" do
    json = JSON.parse(
      '{
        "id": "1",
        "date": "2011-01-10T09:30:00Z",
        "tag": ["planning"],
        "initiationType": "tender",
        "ocid": "bacon",
        "parties": [
          {
            "name": "string",
            "id": "",
            "identifier": {
              "scheme": "string",
              "id": "string",
              "legalName": "string",
              "uri": "string"
            },
            "additionalIdentifiers": [
              {
                "scheme": "string",
                "id": "string",
                "legalName": "string",
                "uri": "string"
              }
            ],
            "address": {
              "streetAddress": "string",
              "locality": "string",
              "region": "string",
              "postalCode": "string",
              "countryName": "string"
            },
            "contactPoint": {
              "name": "string",
              "email": "string",
              "telephone": "string",
              "faxNumber": "string",
              "url": "string"
            },
            "roles": null,
            "details": null
          }
        ],
        "buyer": {
          "name": "string",
          "id": "string",
          "identifier": {
            "id": "",
            "scheme": null,
            "legalName": null,
            "uri": null
          },
          "address": {
            "streetAddress": "1600 Amphitheatre Pkwy.",
            "locality": "Mountain View",
            "region": "CA",
            "postalCode": "94043",
            "countryName": "United States"
          },
          "additionalIdentifiers": [],
          "contactPoint": {
            "name": "Test",
            "email": "test@mapc.org",
            "telephone": "203-867-5309",
            "faxNumber": "123-456-7890",
            "url": "https://www.mapc.org"
          }
        },
        "planning": {
          "rationale": "string",
          "budget": {
            "id": "string",
            "description": "string",
            "amount": {
              "amount": 25000,
              "currency": "ADP"
            },
            "project": "string",
            "projectID": "string",
            "uri": "string",
            "source": null
          },
          "documents": [
            {
              "id": "string",
              "documentType": "string",
              "title": "string",
              "description": "string",
              "url": "string",
              "datePublished": "2011-01-10T09:30:00Z",
              "dateModified": "2011-01-10T09:30:00Z",
              "format": "string",
              "language": "string"
            }
          ],
          "milestones": [
            {
              "id": "string",
              "title": "string",
              "type": "string",
              "description": "string",
              "code": "string",
              "dueDate": "2011-01-10T09:30:00Z",
              "dateMet": "2011-01-10T09:30:00Z",
              "dateModified": "2011-01-10T09:30:00Z",
              "status": "met",
              "documents": []
            }
          ]
        },
        "tender": {
          "id": "string",
          "title": "string",
          "description": "string",
          "status": "planning",
          "procuringEntity": {
            "name": "string",
            "id": "string",
            "identifier": {
              "id": "",
              "scheme": null,
              "legalName": null,
              "uri": null
            },
            "address": {
              "streetAddress": "1600 Amphitheatre Pkwy.",
              "locality": "Mountain View",
              "region": "CA",
              "postalCode": "94043",
              "countryName": "United States"
            },
            "additionalIdentifiers": [],
            "contactPoint": {
              "name": "Test",
              "email": "test@mapc.org",
              "telephone": "203-867-5309",
              "faxNumber": "123-456-7890",
              "url": "https://www.mapc.org"
            }
          },
          "items": [
            {
              "id": "string",
              "description": "string",
              "classification": {
                "scheme": "string",
                "id": "string",
                "description": "string",
                "uri": "string"
              },
              "additionalClassifications": [
                {
                  "scheme": "string",
                  "id": "string",
                  "description": "string",
                  "uri": "string"
                }
              ],
              "quantity": 1,
              "unit": {
                "scheme": "string",
                "id": "string",
                "name": "string",
                "value": {
                  "amount": 25,
                  "currency": "ADP"
                },
                "uri": "string"
              }
            }
          ],
          "value": {
            "amount": 25,
            "currency": "ADP"
          },
          "minValue": {
            "amount": 25,
            "currency": "ADP"
          },
          "procurementMethod": "open",
          "procurementMethodDetails": "string",
          "procurementMethodRationale": "string",
          "mainProcurementCategory": "goods",
          "additionalProcurementCategories": [],
          "awardCriteria": "string",
          "awardCriteriaDetails": "string",
          "submissionMethod": [],
          "submissionMethodDetails": "string",
          "tenderPeriod": {
            "startDate": "2011-01-10T09:30:00Z",
            "endDate": "2011-01-10T09:30:00Z",
            "maxExtentDate": "2011-01-10T09:30:00Z",
            "durationInDays": 10
          },
          "enquiryPeriod": {
            "startDate": "2011-01-10T09:30:00Z",
            "endDate": "2011-01-10T09:30:00Z",
            "maxExtentDate": "2011-01-10T09:30:00Z",
            "durationInDays": 10
          },
          "hasEnquiries": false,
          "eligibilityCriteria": "string",
          "awardPeriod": {
            "startDate": "2011-01-10T09:30:00Z",
            "endDate": "2011-01-10T09:30:00Z",
            "maxExtentDate": "2011-01-10T09:30:00Z",
            "durationInDays": 10
          },
          "contractPeriod": {
            "startDate": "2011-01-10T09:30:00Z",
            "endDate": "2011-01-10T09:30:00Z",
            "maxExtentDate": "2011-01-10T09:30:00Z",
            "durationInDays": 10
          },
          "numberOfTenderers": 10,
          "tenderers": [
            {
              "name": "string",
              "id": "string",
              "identifier": {
                "id": "",
                "scheme": null,
                "legalName": null,
                "uri": null
              },
              "address": {
                "streetAddress": "1600 Amphitheatre Pkwy.",
                "locality": "Mountain View",
                "region": "CA",
                "postalCode": "94043",
                "countryName": "United States"
              },
              "additionalIdentifiers": [],
              "contactPoint": {
                "name": "Test",
                "email": "test@mapc.org",
                "telephone": "203-867-5309",
                "faxNumber": "123-456-7890",
                "url": "https://www.mapc.org"
              }
            }
          ],
          "documents": [
            {
              "id": "string",
              "documentType": "string",
              "title": "string",
              "description": "string",
              "url": "string",
              "datePublished": "2011-01-10T09:30:00Z",
              "dateModified": "2011-01-10T09:30:00Z",
              "format": "string",
              "language": "string"
            }
          ],
          "milestones": [
            {
              "id": "string",
              "title": "string",
              "type": "string",
              "description": "string",
              "code": "string",
              "dueDate": "2011-01-10T09:30:00Z",
              "dateMet": "2011-01-10T09:30:00Z",
              "dateModified": "2011-01-10T09:30:00Z",
              "status": "met",
              "documents": []
            }
          ],
          "amendments": [
            {
              "date": "2011-01-10T09:30:00Z",
              "rationale": "string",
              "id": "string",
              "description": "string",
              "amendsReleaseID": "string",
              "releaseID": "string",
              "changes": []
            }
          ],
          "amendment": {
            "date": null,
            "rationale": null,
            "id": null,
            "description": null,
            "amendsReleaseID": null,
            "releaseID": null,
            "changes": []
          }
        },
        "awards": [
          {
            "id": "string",
            "title": "string",
            "description": "string",
            "status": "pending",
            "date": "2011-01-10T09:30:00Z",
            "value": {
              "amount": 25,
              "currency": "ADP"
            },
            "suppliers": [
              {
                "name": "string",
                "id": "string",
                "identifier": {
                  "id": "",
                  "scheme": null,
                  "legalName": null,
                  "uri": null
                },
                "address": {
                  "streetAddress": "1600 Amphitheatre Pkwy.",
                  "locality": "Mountain View",
                  "region": "CA",
                  "postalCode": "94043",
                  "countryName": "United States"
                },
                "additionalIdentifiers": [],
                "contactPoint": {
                  "name": "Test",
                  "email": "test@mapc.org",
                  "telephone": "203-867-5309",
                  "faxNumber": "123-456-7890",
                  "url": "https://www.mapc.org"
                }
              }
            ],
            "items": [
              {
                "id": "string",
                "description": "string",
                "classification": {
                  "scheme": "string",
                  "id": "string",
                  "description": "string",
                  "uri": "string"
                },
                "additionalClassifications": [
                  {
                    "scheme": "string",
                    "id": "string",
                    "description": "string",
                    "uri": "string"
                  }
                ],
                "quantity": 25,
                "unit": {
                  "scheme": "string",
                  "id": "string",
                  "name": "string",
                  "value": {
                    "amount": 25,
                    "currency": "ADP"
                  },
                  "uri": "string"
                }
              }
            ],
            "contractPeriod": {
              "startDate": "2011-01-10T09:30:00Z",
              "endDate": "2011-01-10T09:30:00Z",
              "maxExtentDate": "2011-01-10T09:30:00Z",
              "durationInDays": 10
            },
            "documents": [
              {
                "id": "string",
                "documentType": "string",
                "title": "string",
                "description": "string",
                "url": "string",
                "datePublished": "2011-01-10T09:30:00Z",
                "dateModified": "2011-01-10T09:30:00Z",
                "format": "string",
                "language": "string"
              }
            ],
            "amendments": [
              {
                "date": "2011-01-10T09:30:00Z",
                "rationale": "string",
                "id": "string",
                "description": "string",
                "amendsReleaseID": "string",
                "releaseID": "string",
                "changes": []
              }
            ],
            "amendment": {
              "date": null,
              "rationale": null,
              "id": null,
              "description": null,
              "amendsReleaseID": null,
              "releaseID": null,
              "changes": []
            }
          }
        ],
        "contracts": [
          {
            "id": "string",
            "awardID": "string",
            "title": "string",
            "description": "string",
            "status": "pending",
            "period": {
              "startDate": "2011-01-10T09:30:00Z",
              "endDate": "2011-01-10T09:30:00Z",
              "maxExtentDate": "2011-01-10T09:30:00Z",
              "durationInDays": 10
            },
            "value": {
              "amount": 25,
              "currency": "ADP"
            },
            "items": [
              {
                "id": "string",
                "description": "string",
                "classification": {
                  "scheme": "string",
                  "id": "string",
                  "description": "string",
                  "uri": "string"
                },
                "additionalClassifications": [
                  {
                    "scheme": "string",
                    "id": "string",
                    "description": "string",
                    "uri": "string"
                  }
                ],
                "quantity": 25,
                "unit": {
                  "scheme": "string",
                  "id": "string",
                  "name": "string",
                  "value": {
                    "amount": 25,
                    "currency": "ADP"
                  },
                  "uri": "string"
                }
              }
            ],
            "dateSigned": "2011-01-10T09:30:00Z",
            "documents": [
              {
                "id": "string",
                "documentType": "string",
                "title": "string",
                "description": "string",
                "url": "string",
                "datePublished": "2011-01-10T09:30:00Z",
                "dateModified": "2011-01-10T09:30:00Z",
                "format": "string",
                "language": "string"
              }
            ],
            "implementation": {
              "transactions": [
                {
                  "id": "string",
                  "source": "string",
                  "date": "2011-01-10T09:30:00Z",
                  "amount": {
                    "amount": 25,
                    "currency": "ADP"
                  },
                  "value": {
                    "amount": 25,
                    "currency": "ADP"
                  },
                  "payer": {
                    "name": "string",
                    "id": "string",
                    "identifier": {
                      "id": "",
                      "scheme": null,
                      "legalName": null,
                      "uri": null
                    },
                    "address": {
                      "streetAddress": "1600 Amphitheatre Pkwy.",
                      "locality": "Mountain View",
                      "region": "CA",
                      "postalCode": "94043",
                      "countryName": "United States"
                    },
                    "additionalIdentifiers": [],
                    "contactPoint": {
                      "name": "Test",
                      "email": "test@mapc.org",
                      "telephone": "203-867-5309",
                      "faxNumber": "123-456-7890",
                      "url": "https://www.mapc.org"
                    }
                  },
                  "payee": {
                    "name": "string",
                    "id": "string",
                    "identifier": {
                      "id": "",
                      "scheme": null,
                      "legalName": null,
                      "uri": null
                    },
                    "address": {
                      "streetAddress": "1600 Amphitheatre Pkwy.",
                      "locality": "Mountain View",
                      "region": "CA",
                      "postalCode": "94043",
                      "countryName": "United States"
                    },
                    "additionalIdentifiers": [],
                    "contactPoint": {
                      "name": "Test",
                      "email": "test@mapc.org",
                      "telephone": "203-867-5309",
                      "faxNumber": "123-456-7890",
                      "url": "https://www.mapc.org"
                    }
                  },
                  "providerOrganization": {
                    "scheme": null,
                    "id": null,
                    "legalName": null,
                    "uri": null
                  },
                  "receiverOrganization": {
                    "scheme": null,
                    "id": null,
                    "legalName": null,
                    "uri": null
                  },
                  "uri": "string"
                }
              ],
              "milestones": [
                {
                  "id": "string",
                  "title": "string",
                  "type": "string",
                  "description": "string",
                  "code": "string",
                  "dueDate": "2011-01-10T09:30:00Z",
                  "dateMet": "2011-01-10T09:30:00Z",
                  "dateModified": "2011-01-10T09:30:00Z",
                  "status": "met"
                }
              ],
              "documents": [
                {
                  "id": "string",
                  "documentType": "string",
                  "title": "string",
                  "description": "string",
                  "url": "string",
                  "datePublished": "2011-01-10T09:30:00Z",
                  "dateModified": "2011-01-10T09:30:00Z",
                  "format": "string",
                  "language": "string"
                }
              ]
            },
            "relatedProcesses": [
              {
                "id": "",
                "relationship": [],
                "title": "string",
                "scheme": "string",
                "identifier": "string",
                "uri": "string"
              }
            ],
            "milestones": [
              {
                "id": "string",
                "title": "string",
                "type": "string",
                "description": "string",
                "code": "string",
                "dueDate": "2011-01-10T09:30:00Z",
                "dateMet": "2011-01-10T09:30:00Z",
                "dateModified": "2011-01-10T09:30:00Z",
                "status": "met"
              }
            ],
            "amendments": [
              {
                "date": "2011-01-10T09:30:00Z",
                "rationale": "string",
                "id": "string",
                "description": "string",
                "amendsReleaseID": "string",
                "releaseID": "string"
              }
            ]
          }
        ],
        "language": "string",
        "relatedProcesses": [
          {
            "id": "",
            "relationship": [],
            "title": "string",
            "scheme": "string",
            "identifier": "string",
            "uri": "string"
          }
        ]
      }'
      )
    post '/releases', params: { data: json }, as: :json
    expect(response).to have_http_status(:created)
  end

  it "rejects a POSTed invalid release" do
    json = JSON.parse(
      '{
        "id": "1",
        "date": "2011-01-10T09:30:00Z",
        "tag": ["planning"],
        "initiationType": "tender",
        "parties": [
          {
            "name": "string",
            "id": "",
            "identifier": {
              "scheme": "string",
              "id": "string",
              "legalName": "string",
              "uri": "string"
            },
            "additionalIdentifiers": [
              {
                "scheme": "string",
                "id": "string",
                "legalName": "string",
                "uri": "string"
              }
            ],
            "address": {
              "streetAddress": "string",
              "locality": "string",
              "region": "string",
              "postalCode": "string",
              "countryName": "string"
            },
            "contactPoint": {
              "name": "string",
              "email": "string",
              "telephone": "string",
              "faxNumber": "string",
              "url": "string"
            },
            "roles": null,
            "details": null
          }
        ],
        "buyer": {
          "name": "string",
          "id": "string",
          "identifier": {
            "id": "",
            "scheme": null,
            "legalName": null,
            "uri": null
          },
          "address": {
            "streetAddress": "1600 Amphitheatre Pkwy.",
            "locality": "Mountain View",
            "region": "CA",
            "postalCode": "94043",
            "countryName": "United States"
          },
          "additionalIdentifiers": [],
          "contactPoint": {
            "name": "Test",
            "email": "test@mapc.org",
            "telephone": "203-867-5309",
            "faxNumber": "123-456-7890",
            "url": "https://www.mapc.org"
          }
        },
        "planning": {
          "rationale": "string",
          "budget": {
            "id": "string",
            "description": "string",
            "amount": {
              "amount": 25000,
              "currency": "ADP"
            },
            "project": "string",
            "projectID": "string",
            "uri": "string",
            "source": null
          },
          "documents": [
            {
              "id": "string",
              "documentType": "string",
              "title": "string",
              "description": "string",
              "url": "string",
              "datePublished": "2011-01-10T09:30:00Z",
              "dateModified": "2011-01-10T09:30:00Z",
              "format": "string",
              "language": "string"
            }
          ],
          "milestones": [
            {
              "id": "string",
              "title": "string",
              "type": "string",
              "description": "string",
              "code": "string",
              "dueDate": "2011-01-10T09:30:00Z",
              "dateMet": "2011-01-10T09:30:00Z",
              "dateModified": "2011-01-10T09:30:00Z",
              "status": "met",
              "documents": []
            }
          ]
        },
        "tender": {
          "id": "string",
          "title": "string",
          "description": "string",
          "status": "planning",
          "procuringEntity": {
            "name": "string",
            "id": "string",
            "identifier": {
              "id": "",
              "scheme": null,
              "legalName": null,
              "uri": null
            },
            "address": {
              "streetAddress": "1600 Amphitheatre Pkwy.",
              "locality": "Mountain View",
              "region": "CA",
              "postalCode": "94043",
              "countryName": "United States"
            },
            "additionalIdentifiers": [],
            "contactPoint": {
              "name": "Test",
              "email": "test@mapc.org",
              "telephone": "203-867-5309",
              "faxNumber": "123-456-7890",
              "url": "https://www.mapc.org"
            }
          },
          "items": [
            {
              "id": "string",
              "description": "string",
              "classification": {
                "scheme": "string",
                "id": "string",
                "description": "string",
                "uri": "string"
              },
              "additionalClassifications": [
                {
                  "scheme": "string",
                  "id": "string",
                  "description": "string",
                  "uri": "string"
                }
              ],
              "quantity": 1,
              "unit": {
                "scheme": "string",
                "id": "string",
                "name": "string",
                "value": {
                  "amount": 25,
                  "currency": "ADP"
                },
                "uri": "string"
              }
            }
          ],
          "value": {
            "amount": 25,
            "currency": "ADP"
          },
          "minValue": {
            "amount": 25,
            "currency": "ADP"
          },
          "procurementMethod": "open",
          "procurementMethodDetails": "string",
          "procurementMethodRationale": "string",
          "mainProcurementCategory": "goods",
          "additionalProcurementCategories": [],
          "awardCriteria": "string",
          "awardCriteriaDetails": "string",
          "submissionMethod": [],
          "submissionMethodDetails": "string",
          "tenderPeriod": {
            "startDate": "2011-01-10T09:30:00Z",
            "endDate": "2011-01-10T09:30:00Z",
            "maxExtentDate": "2011-01-10T09:30:00Z",
            "durationInDays": 10
          },
          "enquiryPeriod": {
            "startDate": "2011-01-10T09:30:00Z",
            "endDate": "2011-01-10T09:30:00Z",
            "maxExtentDate": "2011-01-10T09:30:00Z",
            "durationInDays": 10
          },
          "hasEnquiries": false,
          "eligibilityCriteria": "string",
          "awardPeriod": {
            "startDate": "2011-01-10T09:30:00Z",
            "endDate": "2011-01-10T09:30:00Z",
            "maxExtentDate": "2011-01-10T09:30:00Z",
            "durationInDays": 10
          },
          "contractPeriod": {
            "startDate": "2011-01-10T09:30:00Z",
            "endDate": "2011-01-10T09:30:00Z",
            "maxExtentDate": "2011-01-10T09:30:00Z",
            "durationInDays": 10
          },
          "numberOfTenderers": 10,
          "tenderers": [
            {
              "name": "string",
              "id": "string",
              "identifier": {
                "id": "",
                "scheme": null,
                "legalName": null,
                "uri": null
              },
              "address": {
                "streetAddress": "1600 Amphitheatre Pkwy.",
                "locality": "Mountain View",
                "region": "CA",
                "postalCode": "94043",
                "countryName": "United States"
              },
              "additionalIdentifiers": [],
              "contactPoint": {
                "name": "Test",
                "email": "test@mapc.org",
                "telephone": "203-867-5309",
                "faxNumber": "123-456-7890",
                "url": "https://www.mapc.org"
              }
            }
          ],
          "documents": [
            {
              "id": "string",
              "documentType": "string",
              "title": "string",
              "description": "string",
              "url": "string",
              "datePublished": "2011-01-10T09:30:00Z",
              "dateModified": "2011-01-10T09:30:00Z",
              "format": "string",
              "language": "string"
            }
          ],
          "milestones": [
            {
              "id": "string",
              "title": "string",
              "type": "string",
              "description": "string",
              "code": "string",
              "dueDate": "2011-01-10T09:30:00Z",
              "dateMet": "2011-01-10T09:30:00Z",
              "dateModified": "2011-01-10T09:30:00Z",
              "status": "met",
              "documents": []
            }
          ],
          "amendments": [
            {
              "date": "2011-01-10T09:30:00Z",
              "rationale": "string",
              "id": "string",
              "description": "string",
              "amendsReleaseID": "string",
              "releaseID": "string",
              "changes": []
            }
          ],
          "amendment": {
            "date": null,
            "rationale": null,
            "id": null,
            "description": null,
            "amendsReleaseID": null,
            "releaseID": null,
            "changes": []
          }
        },
        "awards": [
          {
            "id": "string",
            "title": "string",
            "description": "string",
            "status": "pending",
            "date": "2011-01-10T09:30:00Z",
            "value": {
              "amount": 25,
              "currency": "ADP"
            },
            "suppliers": [
              {
                "name": "string",
                "id": "string",
                "identifier": {
                  "id": "",
                  "scheme": null,
                  "legalName": null,
                  "uri": null
                },
                "address": {
                  "streetAddress": "1600 Amphitheatre Pkwy.",
                  "locality": "Mountain View",
                  "region": "CA",
                  "postalCode": "94043",
                  "countryName": "United States"
                },
                "additionalIdentifiers": [],
                "contactPoint": {
                  "name": "Test",
                  "email": "test@mapc.org",
                  "telephone": "203-867-5309",
                  "faxNumber": "123-456-7890",
                  "url": "https://www.mapc.org"
                }
              }
            ],
            "items": [
              {
                "id": "string",
                "description": "string",
                "classification": {
                  "scheme": "string",
                  "id": "string",
                  "description": "string",
                  "uri": "string"
                },
                "additionalClassifications": [
                  {
                    "scheme": "string",
                    "id": "string",
                    "description": "string",
                    "uri": "string"
                  }
                ],
                "quantity": 25,
                "unit": {
                  "scheme": "string",
                  "id": "string",
                  "name": "string",
                  "value": {
                    "amount": 25,
                    "currency": "ADP"
                  },
                  "uri": "string"
                }
              }
            ],
            "contractPeriod": {
              "startDate": "2011-01-10T09:30:00Z",
              "endDate": "2011-01-10T09:30:00Z",
              "maxExtentDate": "2011-01-10T09:30:00Z",
              "durationInDays": 10
            },
            "documents": [
              {
                "id": "string",
                "documentType": "string",
                "title": "string",
                "description": "string",
                "url": "string",
                "datePublished": "2011-01-10T09:30:00Z",
                "dateModified": "2011-01-10T09:30:00Z",
                "format": "string",
                "language": "string"
              }
            ],
            "amendments": [
              {
                "date": "2011-01-10T09:30:00Z",
                "rationale": "string",
                "id": "string",
                "description": "string",
                "amendsReleaseID": "string",
                "releaseID": "string",
                "changes": []
              }
            ],
            "amendment": {
              "date": null,
              "rationale": null,
              "id": null,
              "description": null,
              "amendsReleaseID": null,
              "releaseID": null,
              "changes": []
            }
          }
        ],
        "contracts": [
          {
            "id": "string",
            "awardID": "string",
            "title": "string",
            "description": "string",
            "status": "pending",
            "period": {
              "startDate": "2011-01-10T09:30:00Z",
              "endDate": "2011-01-10T09:30:00Z",
              "maxExtentDate": "2011-01-10T09:30:00Z",
              "durationInDays": 10
            },
            "value": {
              "amount": 25,
              "currency": "ADP"
            },
            "items": [
              {
                "id": "string",
                "description": "string",
                "classification": {
                  "scheme": "string",
                  "id": "string",
                  "description": "string",
                  "uri": "string"
                },
                "additionalClassifications": [
                  {
                    "scheme": "string",
                    "id": "string",
                    "description": "string",
                    "uri": "string"
                  }
                ],
                "quantity": 25,
                "unit": {
                  "scheme": "string",
                  "id": "string",
                  "name": "string",
                  "value": {
                    "amount": 25,
                    "currency": "ADP"
                  },
                  "uri": "string"
                }
              }
            ],
            "dateSigned": "2011-01-10T09:30:00Z",
            "documents": [
              {
                "id": "string",
                "documentType": "string",
                "title": "string",
                "description": "string",
                "url": "string",
                "datePublished": "2011-01-10T09:30:00Z",
                "dateModified": "2011-01-10T09:30:00Z",
                "format": "string",
                "language": "string"
              }
            ],
            "implementation": {
              "transactions": [
                {
                  "id": "string",
                  "source": "string",
                  "date": "2011-01-10T09:30:00Z",
                  "amount": {
                    "amount": 25,
                    "currency": "ADP"
                  },
                  "value": {
                    "amount": 25,
                    "currency": "ADP"
                  },
                  "payer": {
                    "name": "string",
                    "id": "string",
                    "identifier": {
                      "id": "",
                      "scheme": null,
                      "legalName": null,
                      "uri": null
                    },
                    "address": {
                      "streetAddress": "1600 Amphitheatre Pkwy.",
                      "locality": "Mountain View",
                      "region": "CA",
                      "postalCode": "94043",
                      "countryName": "United States"
                    },
                    "additionalIdentifiers": [],
                    "contactPoint": {
                      "name": "Test",
                      "email": "test@mapc.org",
                      "telephone": "203-867-5309",
                      "faxNumber": "123-456-7890",
                      "url": "https://www.mapc.org"
                    }
                  },
                  "payee": {
                    "name": "string",
                    "id": "string",
                    "identifier": {
                      "id": "",
                      "scheme": null,
                      "legalName": null,
                      "uri": null
                    },
                    "address": {
                      "streetAddress": "1600 Amphitheatre Pkwy.",
                      "locality": "Mountain View",
                      "region": "CA",
                      "postalCode": "94043",
                      "countryName": "United States"
                    },
                    "additionalIdentifiers": [],
                    "contactPoint": {
                      "name": "Test",
                      "email": "test@mapc.org",
                      "telephone": "203-867-5309",
                      "faxNumber": "123-456-7890",
                      "url": "https://www.mapc.org"
                    }
                  },
                  "providerOrganization": {
                    "scheme": null,
                    "id": null,
                    "legalName": null,
                    "uri": null
                  },
                  "receiverOrganization": {
                    "scheme": null,
                    "id": null,
                    "legalName": null,
                    "uri": null
                  },
                  "uri": "string"
                }
              ],
              "milestones": [
                {
                  "id": "string",
                  "title": "string",
                  "type": "string",
                  "description": "string",
                  "code": "string",
                  "dueDate": "2011-01-10T09:30:00Z",
                  "dateMet": "2011-01-10T09:30:00Z",
                  "dateModified": "2011-01-10T09:30:00Z",
                  "status": "met"
                }
              ],
              "documents": [
                {
                  "id": "string",
                  "documentType": "string",
                  "title": "string",
                  "description": "string",
                  "url": "string",
                  "datePublished": "2011-01-10T09:30:00Z",
                  "dateModified": "2011-01-10T09:30:00Z",
                  "format": "string",
                  "language": "string"
                }
              ]
            },
            "relatedProcesses": [
              {
                "id": "",
                "relationship": [],
                "title": "string",
                "scheme": "string",
                "identifier": "string",
                "uri": "string"
              }
            ],
            "milestones": [
              {
                "id": "string",
                "title": "string",
                "type": "string",
                "description": "string",
                "code": "string",
                "dueDate": "2011-01-10T09:30:00Z",
                "dateMet": "2011-01-10T09:30:00Z",
                "dateModified": "2011-01-10T09:30:00Z",
                "status": "met"
              }
            ],
            "amendments": [
              {
                "date": "2011-01-10T09:30:00Z",
                "rationale": "string",
                "id": "string",
                "description": "string",
                "amendsReleaseID": "string",
                "releaseID": "string"
              }
            ]
          }
        ],
        "language": "string",
        "relatedProcesses": [
          {
            "id": "",
            "relationship": [],
            "title": "string",
            "scheme": "string",
            "identifier": "string",
            "uri": "string"
          }
        ]
      }'
      )
    post '/releases', params: { data: json }, as: :json
    expect(response).to have_http_status(:unprocessable_entity)
  end
end

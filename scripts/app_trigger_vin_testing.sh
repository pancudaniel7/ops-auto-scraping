#!/bin/bash

payloads=$(cat <<EOF
[
    {
        "userId": "1",
        "email": "pancudaniel7@gmail.com",
        "vinNumber": "WVWZZZ1KZ5W097288",
        "options": {
            "language": "en",
            "currency": "EUR",
            "ronToCurrencyRate": 0.20,
            "secondPricePercentage": 15,
            "photosNumber": 4,
            "photosBaseUrl": "https://www.dropbox.com/sh/xs2ldlxot091e10/AADzloxuxmrUquCWL1qTg1xga?dl=0&preview="
        }
    },
    {
        "userId": "2",
        "email": "user2@gmail.com",
        "vinNumber": "WAUZZZ4F65N002066",
        "options": {
            "language": "en",
            "currency": "EUR",
            "ronToCurrencyRate": 0.20,
            "secondPricePercentage": 15,
            "photosNumber": 4,
            "photosBaseUrl": "https://www.dropbox.com/sh/xs2ldlxot091e10/AADzloxuxmrUquCWL1qTg1xga?dl=0&preview="
        }
    },
    {
        "userId": "1",
        "email": "user1@gmail.com",
        "vinNumber": "WAUZZZ8LZ1A012277",
        "options": {
            "language": "ro",
            "currency": "EUR",
            "ronToCurrencyRate": 0.20,
            "secondPricePercentage": 15,
            "photosNumber": 4,
            "photosBaseUrl": "https://www.dropbox.com/sh/xs2ldlxot091e10/AADzloxuxmrUquCWL1qTg1xga?dl=0&preview="
        }
    },
    {
        "userId": "3",
        "email": "user3@gmail.com",
        "vinNumber": "WVWZZZ1JZ1W635200",
        "options": {
            "language": "en",
            "currency": "EUR",
            "ronToCurrencyRate": 0.20,
            "secondPricePercentage": 15,
            "photosNumber": 8,
            "photosBaseUrl": "https://www.dropbox.com/sh/xs2ldlxot091e10/AADzloxuxmrUquCWL1qTg1xga?dl=0&preview="
        }
    }
]
EOF
)

curl --location --request PUT 'http://localhost:5000/triggers/start-flow-file-out' --header 'Content-Type: application/json' \
--data-raw "$payloads"


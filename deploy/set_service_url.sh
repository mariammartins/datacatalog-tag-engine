#!/bin/bash

export API_SERVICE_URL=`gcloud run services describe tag-engine-api --region us-central1 --format="value(status.url)"`
gcloud run services update tag-engine-api --region us-central1 --set-env-vars SERVICE_URL=$API_SERVICE_URL

export UI_SERVICE_URL=`gcloud run services describe tag-engine-ui --region us-central1 --format="value(status.url)"`
gcloud run services update tag-engine-ui --region us-central1 --set-env-vars SERVICE_URL=$UI_SERVICE_URL

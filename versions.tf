# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
 backend "gcs" {
   bucket  = "techtorial-gke-mirat"
   prefix  = "terraform/state"
 }
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }
  }

  required_version = ">= 0.14"
}


## SQL Assessment

This repository contains my solution for the Transportation Insight (TI) Parcel SQL take-home assessment.

## Overview

The goal of this project is to simulate a SQL Server process for importing and reporting on weekly parcel invoice data from multiple carriers (UPS, FedEx, DHL) for a large set of clients.

## What's Included

- Table creation scripts for carriers, clients, and invoice data
- Sample data insert scripts
- Queries to:
  - List the first 10 packages with client and carrier names
  - Show package counts per carrier
- Scripts to add, detect, and remove duplicate records

## How to Use

1. Set up a SQL Server 2016 (or newer) database named Interview.
2. Run the scripts in the order they're listed in below

## Files

- Create Table - dbo.DimCarrier.sql
- Create Table - dbo.DimClient.sql
- Create Table - dbo.FactInvoiceFile.sql
- Load Test Data - DimCarrier.sql
- Load Test Data - DimClient.sql
- Load Test Data - FactInvoiceFile.sql
- Query - First 10 Packages.sql
- Query - Number of Packages per Carrier.sql
- Insert-Find-Delete - Duplicate.sql

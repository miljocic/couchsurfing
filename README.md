# CouchSurfing Database Project

# Overview

Relational database model for a CouchSurfing-style hospitality platform where travelers find free accommodation with local hosts. Built with MySQL.

# Files

| File | Description |
|------|-------------|
| `CouchSurfing_kreiranje_baze.sql` | DDL — creates all tables and constraints |
| `couchsurfing_popunjena_baza.sql` | Full database dump with sample data |
| `CouchSurfing_CDM/LDM/PDM.jpg` | Conceptual, Logical, and Physical data model diagrams |
| `CouchSurfingSpecifikacijaZahteva.docx` | Requirements specification |

## Schema Highlights

22 tables covering: users (guests & hosts), accommodations, bookings, travel methods (bus/car/plane/train), activities, ratings, gifts, and social connections.

## Setup

```bash
mysql -u your_user -p couchsurfing < CouchSurfing_kreiranje_baze.sql
mysql -u your_user -p couchsurfing < couchsurfing_popunjena_baza.sql
```
> Databases 2024 — First Project  
> Authors: Anastasija Jovanović & Milica Jocić

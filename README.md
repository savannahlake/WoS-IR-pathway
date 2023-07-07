# WoS-IR-pathway

This documentation details a process by which repositories can leverage citation data within Web of Science to identify eligble works for a repository, generate metadata records, and then batch ingest works. This documentation is for repositories running on Islandora and utilizing MODS for metadata records. 

The process includes:

* Pulling citation data from Web of Science and applying batch transformations to the data in OpenRefine that allow us to better understand who is publishing open access at your institution: Data Normalization
* For faculty and staff who elect to participate and approve the deposit of their works, normalizing the Web of Science citation data to support batch ingestion into a repository: Metadata crosswalk
* And finally, batch ingesting the works into the repository: Batch ingestion

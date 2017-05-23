# DMAO-Pure-Extractor-Docker
## dmaonline/pure-extractor

Docker image for DMA Online Pure extractor gem.

## Usage

### Getting the docker image
`docker pull dmaonline/pure-extractor:v1.1.0`

### Using the docker image

#### Environment Variables

The following environment variables can be set for configuring the pure extraction

| Variable | Default | Description |
| --- | --- | --- |
| PURE_API_URL | '' | [REQUIRED] Pure rest API url for puree |
| PURE_USERNAME | '' | [OPTIONAL] Username for Pure rest API |
| PURE_PASSWORD | '' | [OPTIONAL] Password for Pure rest API |
| OUTPUT_DIR | '/dmao-data' | [OPTIONAL] Directory to store output partial files in, default is fine with a volume bind or mount |
| EXTRACT_AREA | 'organisation' | [OPTIONAL] Area to extract data for from puree options include: organisation, people, projects, publications, datasets |

#### Command Line usage

```shell
docker run -v /my/host/data/directory:/dmao-data -e PURE_API_URL="http://pure.lancs.ac.uk/ws/rest" pure_extractor
```
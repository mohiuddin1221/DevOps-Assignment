FROM python:3.13-slim

# system deps
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"


WORKDIR /app

# dependency files first (cache optimization)
COPY pyproject.toml uv.lock* ./

# install dependencies
RUN uv sync --frozen

# copy source code
COPY . .

# expose fastapi port
EXPOSE 80

# run app
# run app
CMD ["uv", "run", "uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]
FROM ruby:3.2

# Instalar dependências de sistema
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

# Copiar Gemfiles para cache de bundle
COPY Gemfile Gemfile.lock ./

# Instalar gems
RUN bundle install

# Copiar todo o código
COPY . .

# Comando default para iniciar seu app (troque conforme necessidade)
CMD ["rails", "server", "-b", "0.0.0.0"]

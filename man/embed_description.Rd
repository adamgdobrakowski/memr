% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visit_embeddings.R
\name{embed_description}
\alias{embed_description}
\title{Generate an Embedding of a Description}
\usage{
embed_description(description, term_vectors)
}
\arguments{
\item{description}{A string of concatenated terms extracted from a visit, separated by \code{", "}}

\item{term_vectors}{A matrix of embeddings of the terms}
}
\value{
A vector of the embedding of the description.
}
\description{
Compute a simple average of embeddings of given terms of a description. Only
terms that have embeddings are included. If there are not such terms, the vector
of NA is returned.
}
\examples{
term_vectors <- embed_terms(interviews, embedding_size = 10L,
  term_count_min = 1L)

embed_description("fever", term_vectors)
embed_description("fever, cough", term_vectors)
embed_description("fever, cough, temperature",
                  term_vectors)
embed_description("temperature", term_vectors)

}

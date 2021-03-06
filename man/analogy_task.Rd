% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analogies.R
\name{analogy_task}
\alias{analogy_task}
\title{Solve Term Analogy Task}
\usage{
analogy_task(term_vectors, n = 1, terms)
}
\arguments{
\item{term_vectors}{A matrix of embeddings of the terms}

\item{n}{A number of neighbors included in analogies (default: 1)}

\item{terms}{A list of two character vectors: the first and the second elements of pairs}
}
\value{
A list of:
  \item{accuracy}{An accuracy of the fulfilled analogies}
  \item{questions}{A data frame of the all analogy questions and results}
}
\description{
Solve the term analogy task for given embeddings and pairs of analogies.
}
\details{
This function is an implementation of the word analogy task introduced by Mikolov et al. (2013)
to validate the quality of word embeddings. For given pairs of terms being in
the same relation (e.g. man - woman) there is formed a list of questions
by taking all two-element ordered subsets of the pairs. If \code{(term1, term2)} and \code{(term3, term4)}
are the embeddings of the selected pairs, we expect that \code{term1 - term2} is close to \code{term3 - term4}.
Hence, there is computed the vector \code{e = term1 - term2 + term4} and compared with \code{term3}.
The analogy is fulfilled if \code{term3} is in the \code{n} closest terms to \code{e}.
}
\examples{
term_vectors <- embed_terms(examinations,
  embedding_size = 5L, term_count_min = 1L)
terms <- terms_pairs_test[[1]]
analogy_task(term_vectors, 1, terms)
analogy_task(term_vectors, 3, terms)
analogy_task(term_vectors, 5, terms)

}
\references{
Tomas Mikolov, Kai Chen, Greg Corrado, and Jeffrey Dean. 2013.
 Efficient estimation of word representations in vector space.
 arXiv preprint arXiv:1301.3781.
}

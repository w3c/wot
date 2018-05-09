# Conventions

## Best Practices
1. Blocks of normative text: split the document in sections at H1-H6,
   remove well-known non-normative sections based on their ID (status,
   bibliography, ToC, etc.), remove other non-normative sections based on
   their first line containing "is informative" or "is not normative", and
   remove notes (class=note) and examples (class=example). But extracting
   individual assertions from the remaining text would require knowledge of
   English.
2. All CSS properties and descriptors with several of their
   characteristics (property-specific syntax, inheritance, media).
   Properties are rather well marked up, because various tools rely on that
   mark-up (such as Bikeshed, which makes alphabetic indexes and cross-
   references).
3. The productions of the generic syntax of CSS and productions that are
   shared by several properties are often, but not always marked up with
   class=prod. This is less consistent, because nobody in the WG itself
   extracts them automatically. For some parts there are no productions at
   all, because they have been replaced by an example top-down, left-to-
   right parsing algorithm in English. (At some point, Björn Höhrmann had a
   tool that extracted the grammar. But there were gaps in the result...)

## Other considerations:
* Standardize location and text of conformance section

## Examples
TODO

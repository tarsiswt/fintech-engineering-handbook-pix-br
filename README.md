# fintech-engineering-handbook

Welcome to the Fintech Engineering Handbook. This resource aims to describe the most important patterns used in software
engineering, where money is the primary focus of the system. It can be read in full to get a comprehensive understanding
or in parts when dealing with a particular problem.

It's meant as a living document and contributions are welcomed.

## Principles

Everything you will read below is a way to adhere to the three principles:

1. No invented data - Money can't be created out of nowhere, hence we can't tolerate duplicates or arbitrary balance
   updates.
2. No lost data - Everything that happens to money has to be tracked and persisted. No precision losses, at-least-once
   deliveries, even-sourcing, audit trails, immutability.
3. No trust - Neither towards external providers, internal components nor the world. Failing on broken assumptions,
   verifying webhooks, verifying data across different sources.

## Guidelines

### Precision handling

Money representation is one of the most fundamental decisions in financial systems. There are four primary ways to do
it:

1. Floating-point precision - Using built-in float or double types. This can create unpredictable precision losses and
   is almost never a good idea. Buit its the fastes, most memory efficient and requires no additional librarires or data
   structures.
2. Arbitrary precision - Types like java's `BigDecimal` allows to control the precision of the computation precisiely.
   This way the code is predictable and we can decide about the consequences.
3. Minor-units precision - For most fiat currencies it's ok to keep only a fixed precision, the same that is used in the
   connected central banking system. Number of digits is described by ISO 4217 (don't assume its always 2, it's not!).
   This approach is usually good enough for fiat currencies but doesn't work for crypto.
4. Rational numbers - when no precision loss is acceptable, we can use rational numbers. This is the most powerful
   approach but comes with its own caveats. First: it's slower than alternatives, Second: it cannot be converted to other formats without losing precision.
   Third: it usually requires a custom datatype or a library. 

Selecting one or the other depends on the class of the system and its responsibilities. There is not rule of thumb principle here, other than not using floating points. 

#### Rounding stategies

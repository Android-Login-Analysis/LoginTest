import nlpaug.augmenter.word as naw
import nlpaug.augmenter.char as nac

# Original list of login button identifiers
loginButtonIdentifiers = [
    "checkToken", "check_token", "validateToken", "validate_token",
        "verifyToken", "verify_token", "authToken", "authenticateToken",
        "tokenValidation", "token_verify", "authorizationCheck"
]

# 1. Synonym Augmentation using WordNet
# This replaces words with their synonyms from the WordNet database
syn_aug = naw.SynonymAug(aug_src='wordnet')
synonym_augmented = [syn_aug.augment(word) for word in loginButtonIdentifiers]

# 2. Random Character Deletion
# This randomly deletes characters in words to simulate typing mistakes or variations
char_aug = nac.RandomCharAug(action="delete")
char_augmented = [char_aug.augment(word) for word in loginButtonIdentifiers]

# Print the augmented data
print("Original Data:", loginButtonIdentifiers)
print("Synonym Augmented:", synonym_augmented)
print("Character Deletion Augmented:", char_augmented)

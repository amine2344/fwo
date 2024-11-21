enum FirebaseExceptionCode {
  // Auth Exception Codes
  accountExistsWithDifferentCredential,
  emailAlreadyInUse,
  appNotAuthorized,
  appNotInstalled,
  argumentError,
  invalidApiKey,
  invalidUserToken,
  invalidEmail,
  invalidPassword,
  invalidPhoneNumber,
  invalidVerificationCode,
  invalidVerificationId,
  invalidCredential,
  networkRequestFailed,
  noAuthEvent,
  operationNotAllowed,
  requiresRecentLogin,
  tooManyRequests,
  userDisabled,
  userNotFound,
  weakPassword,
  wrongPassword,

  // Firestore Exception Codes
  cancelled,
  unknown,
  invalidArgument,
  deadlineExceeded,
  notFound,
  alreadyExists,
  permissionDenied,
  resourceExhausted,
  failedPrecondition,
  aborted,
  outOfRange,
  unimplemented,
  internal,
  unavailable,
  dataLoss,
  unauthenticated,

  // Storage Exception Codes
  objectNotFound,
  bucketNotFound,
  projectNotFound,
  quotaExceeded,
  unauthorized,
  retryLimitExceeded,
  invalidChecksum,
  canceled,
  invalidEventName,
  invalidUrl,
  transientError,
  serverFileWrongSize,
}


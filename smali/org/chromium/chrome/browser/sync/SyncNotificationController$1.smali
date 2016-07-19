.class synthetic Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;
.super Ljava/lang/Object;
.source "SyncNotificationController.java"


# static fields
.field static final synthetic $SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

.field static final synthetic $SwitchMap$org$chromium$sync$PassphraseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->values()[Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->NONE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CONNECTION_FAILED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->SERVICE_UNAVAILABLE:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->REQUEST_CANCELED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->INVALID_GAIA_CREDENTIALS:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->USER_NOT_SIGNED_UP:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->CAPTCHA_REQUIRED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DELETED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ACCOUNT_DISABLED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->TWO_FACTOR:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    sget-object v1, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->HOSTED_NOT_ALLOWED:Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    .line 76
    :goto_a
    invoke-static {}, Lorg/chromium/sync/PassphraseType;->values()[Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    :try_start_b
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    sget-object v1, Lorg/chromium/sync/PassphraseType;->IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-virtual {v1}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    sget-object v1, Lorg/chromium/sync/PassphraseType;->FROZEN_IMPLICIT_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-virtual {v1}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    sget-object v1, Lorg/chromium/sync/PassphraseType;->CUSTOM_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-virtual {v1}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    sget-object v1, Lorg/chromium/sync/PassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-virtual {v1}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    return-void

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto/16 :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    goto/16 :goto_0
.end method

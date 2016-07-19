.class Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler$1;
.super Landroid/os/AsyncTask;
.source "IntentWithGesturesHandler.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler$1;->this$0:Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/security/SecureRandom;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 65
    const/4 v1, 0x0

    .line 67
    :try_start_0
    const-string/jumbo v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 68
    :try_start_1
    invoke-static {v0}, Lorg/chromium/base/SecureRandomInitializer;->initialize(Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 74
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 70
    :goto_1
    const-string/jumbo v2, "IntentGestureHandler"

    const-string/jumbo v3, "Cannot create SecureRandom"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 72
    :goto_2
    const-string/jumbo v2, "IntentGestureHandler"

    const-string/jumbo v3, "Cannot initialize SecureRandom"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :catch_2
    move-exception v1

    goto :goto_2

    .line 69
    :catch_3
    move-exception v1

    goto :goto_1
.end method

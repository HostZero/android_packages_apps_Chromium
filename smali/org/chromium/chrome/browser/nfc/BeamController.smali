.class public final Lorg/chromium/chrome/browser/nfc/BeamController;
.super Ljava/lang/Object;
.source "BeamController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerForBeam(Landroid/app/Activity;Lorg/chromium/chrome/browser/nfc/BeamProvider;)V
    .locals 4

    .prologue
    .line 27
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string/jumbo v1, "android.permission.NFC"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 32
    :try_start_0
    new-instance v1, Lorg/chromium/chrome/browser/nfc/BeamCallback;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/nfc/BeamCallback;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/nfc/BeamProvider;)V

    .line 33
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 34
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    const-string/jumbo v0, "BeamController"

    const-string/jumbo v1, "NFC registration failure. Can\'t retry, giving up."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lorg/chromium/chrome/browser/nfc/BeamCallback;
.super Ljava/lang/Object;
.source "BeamCallback.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# static fields
.field private static final NFC_BUGS_ACTIVE:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mErrorRunnableIfBeamSent:Ljava/lang/Runnable;

.field private final mProvider:Lorg/chromium/chrome/browser/nfc/BeamProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->NFC_BUGS_ACTIVE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/nfc/BeamProvider;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mProvider:Lorg/chromium/chrome/browser/nfc/BeamProvider;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/nfc/BeamCallback;)Lorg/chromium/chrome/browser/nfc/BeamProvider;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mProvider:Lorg/chromium/chrome/browser/nfc/BeamProvider;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lorg/chromium/chrome/browser/nfc/BeamCallback;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/nfc/BeamCallback;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static isValidUrl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    :goto_0
    return v0

    .line 145
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string/jumbo v2, "http|https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onInvalidBeam(I)V
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "MobileBeamInvalidAppState"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/nfc/BeamCallback$2;-><init>(Lorg/chromium/chrome/browser/nfc/BeamCallback;I)V

    .line 123
    sget-boolean v1, Lorg/chromium/chrome/browser/nfc/BeamCallback;->NFC_BUGS_ACTIVE:Z

    if-eqz v1, :cond_0

    .line 124
    iput-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mErrorRunnableIfBeamSent:Ljava/lang/Runnable;

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v1, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;

    sget v0, Lorg/chromium/chrome/R$string;->nfc_beam_error_bad_url:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;-><init>(Ljava/lang/Integer;)V

    .line 79
    :try_start_0
    new-instance v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/nfc/BeamCallback$1;-><init>(Lorg/chromium/chrome/browser/nfc/BeamCallback;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    :goto_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->errorStrID:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 97
    iget-object v0, v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->errorStrID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/nfc/BeamCallback;->onInvalidBeam(I)V

    move-object v0, v2

    .line 103
    :goto_1
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 101
    :cond_0
    const-string/jumbo v1, "MobileBeamCallbackSuccess"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 102
    iput-object v2, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mErrorRunnableIfBeamSent:Ljava/lang/Runnable;

    .line 103
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    iget-object v0, v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;->result:Ljava/lang/String;

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mErrorRunnableIfBeamSent:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    iget-object v1, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mErrorRunnableIfBeamSent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback;->mErrorRunnableIfBeamSent:Ljava/lang/Runnable;

    .line 137
    :cond_0
    return-void
.end method

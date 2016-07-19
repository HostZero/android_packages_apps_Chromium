.class Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;
.super Ljava/lang/Object;
.source "ConnectivityTask.java"

# interfaces
.implements Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;


# instance fields
.field private final mType:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

.field final synthetic this$0:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/feedback/ConnectivityTask;Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->this$0:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->mType:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    .line 209
    return-void
.end method

.method private postCallbackResult()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->this$0:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    # getter for: Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mCallback:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;
    invoke-static {v0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->access$200(Lorg/chromium/chrome/browser/feedback/ConnectivityTask;)Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask$1;-><init>(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onResult(I)V
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Got result for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->mType:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    # invokes: Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->getHumanReadableType(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->access$000(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->getHumanReadableResult(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->this$0:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    # getter for: Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mResult:Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->access$100(Lorg/chromium/chrome/browser/feedback/ConnectivityTask;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->mType:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->this$0:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->postCallbackResult()V

    .line 245
    :cond_0
    return-void
.end method

.method public start(Lorg/chromium/chrome/browser/profiles/Profile;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Starting task for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->mType:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    sget-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$1;->$SwitchMap$org$chromium$chrome$browser$feedback$ConnectivityTask$Type:[I

    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->mType:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 234
    const-string/jumbo v0, "feedback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to recognize type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->mType:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :goto_0
    return-void

    .line 220
    :pswitch_0
    invoke-static {p1, v3, p2, p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->checkConnectivityChromeNetworkStack(Lorg/chromium/chrome/browser/profiles/Profile;ZILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-static {p1, v2, p2, p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->checkConnectivityChromeNetworkStack(Lorg/chromium/chrome/browser/profiles/Profile;ZILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-static {v3, p2, p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->checkConnectivitySystemNetworkStack(ZILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V

    goto :goto_0

    .line 231
    :pswitch_3
    invoke-static {v2, p2, p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->checkConnectivitySystemNetworkStack(ZILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

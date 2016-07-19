.class Lorg/chromium/chrome/browser/gsa/GSAServiceClient$IncomingHandler;
.super Landroid/os/Handler;
.source "GSAServiceClient.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$IncomingHandler;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;Lorg/chromium/chrome/browser/gsa/GSAServiceClient$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$IncomingHandler;-><init>(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$IncomingHandler;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;
    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$100(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 61
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$IncomingHandler;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mGsaHelper:Lorg/chromium/chrome/browser/gsa/GSAHelper;
    invoke-static {v1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$200(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Lorg/chromium/chrome/browser/gsa/GSAHelper;

    move-result-object v1

    const-string/jumbo v2, "ssb_service:ssb_state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/gsa/GSAHelper;->getGSAAccountFromState([B)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$IncomingHandler;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$300(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/gsa/GSAState;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/gsa/GSAState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/gsa/GSAState;->setGsaAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

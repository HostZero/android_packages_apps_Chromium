.class Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;
.super Ljava/lang/Object;
.source "GSAServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;Lorg/chromium/chrome/browser/gsa/GSAServiceClient$1;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;-><init>(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$300(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$102(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$500(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 130
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mGsaHelper:Lorg/chromium/chrome/browser/gsa/GSAHelper;
    invoke-static {v1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$200(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Lorg/chromium/chrome/browser/gsa/GSAHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$300(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/gsa/GSAHelper;->getBundleForRegisteringGSAClient(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ssb_service:ssb_package_name"

    iget-object v3, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$300(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    # getter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;
    invoke-static {v1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$100(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string/jumbo v1, "GSAServiceConnection"

    const-string/jumbo v2, "GSAServiceConnection - remote call failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;->this$0:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->access$102(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 118
    return-void
.end method

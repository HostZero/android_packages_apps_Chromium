.class Lorg/chromium/chrome/browser/customtabs/ClientManager$1$1;
.super Ljava/lang/Object;
.source "ClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/customtabs/ClientManager$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/ClientManager$1;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1$1;->this$1:Lorg/chromium/chrome/browser/customtabs/ClientManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1$1;->this$1:Lorg/chromium/chrome/browser/customtabs/ClientManager$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;->this$0:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1$1;->this$1:Lorg/chromium/chrome/browser/customtabs/ClientManager$1;

    iget-object v1, v1, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;->val$session:Landroid/os/IBinder;

    # invokes: Lorg/chromium/chrome/browser/customtabs/ClientManager;->cleanupSession(Landroid/os/IBinder;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->access$000(Lorg/chromium/chrome/browser/customtabs/ClientManager;Landroid/os/IBinder;)V

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1$1;->this$1:Lorg/chromium/chrome/browser/customtabs/ClientManager$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;->val$onDisconnect:Lorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1$1;->this$1:Lorg/chromium/chrome/browser/customtabs/ClientManager$1;

    iget-object v1, v1, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;->val$session:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;->run(Landroid/os/IBinder;)V

    .line 130
    return-void
.end method

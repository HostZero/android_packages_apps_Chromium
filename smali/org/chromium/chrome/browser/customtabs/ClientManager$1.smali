.class Lorg/chromium/chrome/browser/customtabs/ClientManager$1;
.super Ljava/lang/Object;
.source "ClientManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/ClientManager;

.field final synthetic val$onDisconnect:Lorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;

.field final synthetic val$session:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/ClientManager;Landroid/os/IBinder;Lorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;->this$0:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;->val$session:Landroid/os/IBinder;

    iput-object p3, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;->val$onDisconnect:Lorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$1$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/customtabs/ClientManager$1$1;-><init>(Lorg/chromium/chrome/browser/customtabs/ClientManager$1;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.class Lorg/chromium/chrome/browser/customtabs/ClientManager$2;
.super Ljava/lang/Object;
.source "ClientManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/ClientManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/ClientManager;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$2;->this$0:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

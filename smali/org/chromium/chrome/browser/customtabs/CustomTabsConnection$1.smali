.class Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$1;
.super Ljava/lang/Object;
.source "CustomTabsConnection.java"

# interfaces
.implements Lorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->cancelPrerender(Landroid/os/IBinder;)V

    .line 159
    return-void
.end method

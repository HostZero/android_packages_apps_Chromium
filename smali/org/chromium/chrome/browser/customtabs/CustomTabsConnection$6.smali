.class Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;
.super Ljava/lang/Object;
.source "CustomTabsConnection.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field final synthetic val$callback:Landroid/support/customtabs/ICustomTabsCallback;

.field final synthetic val$remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroid/support/customtabs/ICustomTabsCallback;Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;->val$callback:Landroid/support/customtabs/ICustomTabsCallback;

    iput-object p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;->val$remoteViews:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;->val$callback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;->val$remoteViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->updateRemoteViews(Landroid/os/IBinder;Landroid/widget/RemoteViews;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class final Landroid/support/v4/media/n;
.super Landroid/content/BroadcastReceiver;
.source "TransportMediatorJellybeanMR2.java"


# instance fields
.field private synthetic a:Landroid/support/v4/media/k;


# direct methods
.method constructor <init>(Landroid/support/v4/media/k;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 63
    iget-object v1, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/k;

    iget-object v1, v1, Landroid/support/v4/media/k;->c:Landroid/support/v4/media/j;

    invoke-interface {v1, v0}, Landroid/support/v4/media/j;->a(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v1, "TransportController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

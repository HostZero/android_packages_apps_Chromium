.class final Landroid/support/v7/media/N;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredMediaRouteProviderWatcher.java"


# instance fields
.field private synthetic a:Landroid/support/v7/media/M;


# direct methods
.method constructor <init>(Landroid/support/v7/media/M;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Landroid/support/v7/media/N;->a:Landroid/support/v7/media/M;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/media/N;->a:Landroid/support/v7/media/M;

    invoke-static {v0}, Landroid/support/v7/media/M;->a(Landroid/support/v7/media/M;)V

    .line 143
    return-void
.end method

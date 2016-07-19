.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$1;
.super Ljava/lang/Object;
.source "DefaultMediaRouteController.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$1;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 1

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$1;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->onActivitiesDestroyed()V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

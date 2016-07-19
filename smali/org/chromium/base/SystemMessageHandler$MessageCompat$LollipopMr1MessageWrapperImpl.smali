.class Lorg/chromium/base/SystemMessageHandler$MessageCompat$LollipopMr1MessageWrapperImpl;
.super Ljava/lang/Object;
.source "SystemMessageHandler.java"

# interfaces
.implements Lorg/chromium/base/SystemMessageHandler$MessageCompat$MessageWrapperImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAsynchronous(Landroid/os/Message;Z)V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 109
    return-void
.end method

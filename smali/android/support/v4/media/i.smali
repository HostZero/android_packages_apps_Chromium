.class final Landroid/support/v4/media/i;
.super Ljava/lang/Object;
.source "TransportMediator.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# instance fields
.field private synthetic a:Landroid/support/v4/media/g;


# direct methods
.method constructor <init>(Landroid/support/v4/media/g;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p1}, Landroid/support/v4/media/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/g;

    iget-object v0, v0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/r;->onMediaButtonDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 142
    invoke-static {p1}, Landroid/support/v4/media/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/g;

    iget-object v0, v0, Landroid/support/v4/media/g;->a:Landroid/support/v4/media/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/r;->onMediaButtonUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

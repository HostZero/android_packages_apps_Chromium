.class final Landroid/support/v4/media/o;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/k;


# direct methods
.method constructor <init>(Landroid/support/v4/media/k;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Landroid/support/v4/media/o;->a:Landroid/support/v4/media/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v4/media/o;->a:Landroid/support/v4/media/k;

    iget-object v0, v0, Landroid/support/v4/media/k;->c:Landroid/support/v4/media/j;

    invoke-interface {v0, p1}, Landroid/support/v4/media/j;->a(I)V

    .line 74
    return-void
.end method

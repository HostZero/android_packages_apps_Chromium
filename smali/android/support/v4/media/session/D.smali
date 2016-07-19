.class final Landroid/support/v4/media/session/D;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/L;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/w;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/B;Landroid/support/v4/media/session/w;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p2, p0, Landroid/support/v4/media/session/D;->a:Landroid/support/v4/media/session/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Landroid/support/v4/media/session/D;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/w;->onSeekTo(J)V

    .line 1119
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/support/v4/media/session/D;->a:Landroid/support/v4/media/session/w;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/w;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    .line 1114
    return-void
.end method

.class final Landroid/support/v4/media/session/U;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 527
    .line 2530
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;B)V

    .line 527
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 527
    .line 1535
    new-array v0, p1, [Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 527
    return-object v0
.end method

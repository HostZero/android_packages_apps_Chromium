.class final Lorg/chromium/sync/PassphraseType$1;
.super Ljava/lang/Object;
.source "PassphraseType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lorg/chromium/sync/PassphraseType$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/chromium/sync/PassphraseType;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/sync/PassphraseType;->fromInternalValue(I)Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lorg/chromium/sync/PassphraseType$1;->newArray(I)[Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lorg/chromium/sync/PassphraseType;
    .locals 1

    .prologue
    .line 35
    new-array v0, p1, [Lorg/chromium/sync/PassphraseType;

    return-object v0
.end method

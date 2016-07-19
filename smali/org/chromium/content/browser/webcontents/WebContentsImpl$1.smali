.class final Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;
.super Ljava/lang/Object;
.source "WebContentsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content_public/browser/WebContents;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 66
    const-string/jumbo v0, "version"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 73
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string/jumbo v0, "processguard"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 70
    # getter for: Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;
    invoke-static {}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->access$000()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v0, "webcontents"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    # invokes: Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeFromNativePtr(J)Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->access$100(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;->newArray(I)[Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 78
    new-array v0, p1, [Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

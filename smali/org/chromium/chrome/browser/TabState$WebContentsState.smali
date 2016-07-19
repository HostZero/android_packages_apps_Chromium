.class public Lorg/chromium/chrome/browser/TabState$WebContentsState;
.super Ljava/lang/Object;
.source "TabState.java"


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/TabState$WebContentsState;->mBuffer:Ljava/nio/ByteBuffer;

    .line 67
    return-void
.end method


# virtual methods
.method public buffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/TabState$WebContentsState;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public createHistoricalTab()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/TabState$WebContentsState;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/chrome/browser/TabState$WebContentsState;->mVersion:I

    # invokes: Lorg/chromium/chrome/browser/TabState;->nativeCreateHistoricalTab(Ljava/nio/ByteBuffer;I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/TabState;->access$100(Ljava/nio/ByteBuffer;I)V

    .line 96
    return-void
.end method

.method public restoreContentsFromByteBuffer(Z)Lorg/chromium/content_public/browser/WebContents;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/TabState$WebContentsState;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/chrome/browser/TabState$WebContentsState;->mVersion:I

    # invokes: Lorg/chromium/chrome/browser/TabState;->nativeRestoreContentsFromByteBuffer(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/TabState;->access$000(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    return-object v0
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lorg/chromium/chrome/browser/TabState$WebContentsState;->mVersion:I

    .line 79
    return-void
.end method

.method public version()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/chromium/chrome/browser/TabState$WebContentsState;->mVersion:I

    return v0
.end method

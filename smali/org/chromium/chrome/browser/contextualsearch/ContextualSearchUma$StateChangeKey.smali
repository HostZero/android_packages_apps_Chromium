.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;
.super Ljava/lang/Object;
.source "ContextualSearchUma.java"


# instance fields
.field final mHashCode:I

.field final mReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field final mState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;->mState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    .line 213
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;->mReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 214
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;->mHashCode:I

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    instance-of v2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 223
    goto :goto_0

    .line 225
    :cond_2
    check-cast p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;

    .line 226
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;->mState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    iget-object v3, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;->mState:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;->mReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    iget-object v3, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;->mReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$StateChangeKey;->mHashCode:I

    return v0
.end method

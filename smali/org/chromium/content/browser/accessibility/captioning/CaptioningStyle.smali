.class public Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
.super Ljava/lang/Object;
.source "CaptioningStyle.java"


# instance fields
.field private mBackgroundColor:Ljava/lang/Integer;

.field private mEdgeColor:Ljava/lang/Integer;

.field private mEdgeType:Ljava/lang/Integer;

.field private mForegroundColor:Ljava/lang/Integer;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mWindowColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mBackgroundColor:Ljava/lang/Integer;

    .line 43
    iput-object p2, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mEdgeColor:Ljava/lang/Integer;

    .line 44
    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mEdgeType:Ljava/lang/Integer;

    .line 45
    iput-object p4, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mForegroundColor:Ljava/lang/Integer;

    .line 46
    iput-object p5, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mWindowColor:Ljava/lang/Integer;

    .line 47
    iput-object p6, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mTypeface:Landroid/graphics/Typeface;

    .line 48
    return-void
.end method

.method public static createFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 110
    if-nez p0, :cond_0

    .line 111
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Typeface;)V

    .line 142
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 123
    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    :goto_2
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 129
    :goto_3
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 132
    :goto_4
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    .line 142
    :goto_5
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 136
    :cond_1
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 137
    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 138
    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 139
    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    move-object v1, v0

    goto :goto_5

    :cond_2
    move-object v5, v1

    move-object v1, v0

    goto :goto_5

    :cond_3
    move-object v4, v1

    goto :goto_4

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mBackgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEdgeColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mEdgeColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEdgeType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mEdgeType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getForegroundColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mForegroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

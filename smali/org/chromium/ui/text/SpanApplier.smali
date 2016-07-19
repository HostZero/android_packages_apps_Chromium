.class public Lorg/chromium/ui/text/SpanApplier;
.super Ljava/lang/Object;
.source "SpanApplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static varargs applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 75
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 76
    iget-object v4, v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    .line 77
    iget-object v4, v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    iget v5, v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget-object v6, v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    array-length v4, p1

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, p1, v0

    .line 92
    iget v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-eq v6, v7, :cond_1

    iget v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    if-eq v6, v7, :cond_1

    iget v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-ge v6, v2, :cond_2

    .line 94
    :cond_1
    iput v7, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    .line 95
    const-string/jumbo v0, "Input string is missing tags %s%s: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_2
    iget v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    invoke-virtual {v3, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 101
    iget v2, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget-object v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iput v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    .line 104
    iget v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    invoke-virtual {v3, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 105
    iget v2, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    iget-object v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iput v6, v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 110
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    array-length v3, p1

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_5

    aget-object v4, p1, v0

    .line 112
    iget v5, v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-eq v5, v7, :cond_4

    .line 113
    iget-object v5, v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mSpan:Ljava/lang/Object;

    iget v6, v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget v4, v4, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTagIndex:I

    invoke-virtual {v2, v5, v6, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 111
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    :cond_5
    return-object v2
.end method

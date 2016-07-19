.class public final Lorg/chromium/ui/text/SpanApplier$SpanInfo;
.super Ljava/lang/Object;
.source "SpanApplier.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final mEndTag:Ljava/lang/String;

.field mEndTagIndex:I

.field final mSpan:Ljava/lang/Object;

.field final mStartTag:Ljava/lang/String;

.field mStartTagIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTag:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mEndTag:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mSpan:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget v1, p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    iget v1, p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->mStartTagIndex:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    instance-of v1, p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;->compareTo(Lorg/chromium/ui/text/SpanApplier$SpanInfo;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

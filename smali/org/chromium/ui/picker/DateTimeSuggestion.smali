.class public Lorg/chromium/ui/picker/DateTimeSuggestion;
.super Ljava/lang/Object;
.source "DateTimeSuggestion.java"


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mLocalizedValue:Ljava/lang/String;

.field private final mValue:D


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mValue:D

    .line 26
    iput-object p3, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    instance-of v1, p1, Lorg/chromium/ui/picker/DateTimeSuggestion;

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    check-cast p1, Lorg/chromium/ui/picker/DateTimeSuggestion;

    .line 48
    iget-wide v2, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mValue:D

    iget-wide v4, p1, Lorg/chromium/ui/picker/DateTimeSuggestion;->mValue:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mValue:D

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x47b

    .line 57
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    return v0
.end method

.method label()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method localizedValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mLocalizedValue:Ljava/lang/String;

    return-object v0
.end method

.method value()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/chromium/ui/picker/DateTimeSuggestion;->mValue:D

    return-wide v0
.end method

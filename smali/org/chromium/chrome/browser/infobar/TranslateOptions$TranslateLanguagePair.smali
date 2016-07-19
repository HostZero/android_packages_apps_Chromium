.class public Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;
.super Ljava/lang/Object;
.source "TranslateOptions.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mLanguageCode:Ljava/lang/String;

.field public final mLanguageRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageRepresentation:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    instance-of v1, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;

    if-nez v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    check-cast p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;

    .line 40
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageRepresentation:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageRepresentation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLanguageCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - mlanguageRepresentation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

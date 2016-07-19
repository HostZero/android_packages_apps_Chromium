.class Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;
.super Ljava/lang/Object;
.source "TranslateLanguagePanel.java"


# instance fields
.field private final mLanguageCode:Ljava/lang/String;

.field private final mLanguageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;->mLanguageName:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;->mLanguageCode:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;->mLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateLanguagePanel$SpinnerLanguageElement;->mLanguageName:Ljava/lang/String;

    return-object v0
.end method

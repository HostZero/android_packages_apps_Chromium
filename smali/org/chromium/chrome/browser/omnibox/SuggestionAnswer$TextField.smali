.class public Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;
.super Ljava/lang/Object;
.source "SuggestionAnswer.java"


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mType:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->mType:I

    .line 181
    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->mText:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->mType:I

    return v0
.end method

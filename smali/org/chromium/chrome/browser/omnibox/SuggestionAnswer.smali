.class public Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;
.super Ljava/lang/Object;
.source "SuggestionAnswer.java"


# instance fields
.field private mFirstLine:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;

.field private mSecondLine:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static parseAnswerContents(Ljava/lang/String;)Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 54
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;-><init>()V

    .line 57
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 61
    const-string/jumbo v1, "SuggestionAnswer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Answer JSON doesn\'t contain exactly two lines: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-object v0

    .line 65
    :cond_0
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "il"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, v1, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;->mFirstLine:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;

    .line 67
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "il"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, v1, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;->mSecondLine:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    const-string/jumbo v2, "SuggestionAnswer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Problem parsing answer JSON: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getFirstLine()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;->mFirstLine:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;

    return-object v0
.end method

.method public getSecondLine()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;->mSecondLine:Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;

    return-object v0
.end method

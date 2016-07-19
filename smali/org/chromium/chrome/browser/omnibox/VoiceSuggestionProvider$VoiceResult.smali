.class public Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;
.super Ljava/lang/Object;
.source "VoiceSuggestionProvider.java"


# instance fields
.field private final mConfidence:F

.field private final mMatch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->mMatch:Ljava/lang/String;

    .line 186
    iput p2, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->mConfidence:F

    .line 187
    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->mConfidence:F

    return v0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->mMatch:Ljava/lang/String;

    return-object v0
.end method

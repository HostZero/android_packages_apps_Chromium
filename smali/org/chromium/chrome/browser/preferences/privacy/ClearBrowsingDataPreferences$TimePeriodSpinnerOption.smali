.class Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;
.super Ljava/lang/Object;
.source "ClearBrowsingDataPreferences.java"


# instance fields
.field private mTimePeriod:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;->mTimePeriod:I

    .line 166
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;->mTitle:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public getTimePeriod()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;->mTimePeriod:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$TimePeriodSpinnerOption;->mTitle:Ljava/lang/String;

    return-object v0
.end method

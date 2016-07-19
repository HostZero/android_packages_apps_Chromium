.class Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;
.super Ljava/lang/Object;
.source "ContentSettingsResources.java"


# instance fields
.field private final mDefaultDisabledValue:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field private final mDefaultEnabledValue:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

.field private final mDisabledSummary:I

.field private final mEnabledSummary:I

.field private final mExplanation:I

.field private final mIcon:I

.field private final mTitle:I


# direct methods
.method constructor <init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mIcon:I

    .line 40
    iput p2, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mTitle:I

    .line 41
    iput p3, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mExplanation:I

    .line 42
    iput-object p4, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDefaultEnabledValue:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 43
    iput-object p5, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDefaultDisabledValue:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    .line 44
    iput p6, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mEnabledSummary:I

    .line 45
    iput p7, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDisabledSummary:I

    .line 46
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getIcon()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getTitle()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getExplanation()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getDefaultEnabledValue()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getDefaultDisabledValue()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getEnabledSummary()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getDisabledSummary()I

    move-result v0

    return v0
.end method

.method private getDefaultDisabledValue()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDefaultDisabledValue:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    return-object v0
.end method

.method private getDefaultEnabledValue()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDefaultEnabledValue:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    return-object v0
.end method

.method private getDisabledSummary()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDisabledSummary:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDefaultDisabledValue:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getCategorySummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->access$000(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDisabledSummary:I

    goto :goto_0
.end method

.method private getEnabledSummary()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mEnabledSummary:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mDefaultEnabledValue:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getCategorySummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->access$000(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mEnabledSummary:I

    goto :goto_0
.end method

.method private getExplanation()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mExplanation:I

    return v0
.end method

.method private getIcon()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mIcon:I

    return v0
.end method

.method private getTitle()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->mTitle:I

    return v0
.end method

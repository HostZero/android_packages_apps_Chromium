.class public Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;
.super Ljava/lang/Object;
.source "WebsiteAddress.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mOmitProtocolAndPort:Z

.field private final mOrigin:Ljava/lang/String;

.field private final mOriginOrHostPattern:Ljava/lang/String;

.field private final mScheme:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOriginOrHostPattern:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mHost:Ljava/lang/String;

    .line 80
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOmitProtocolAndPort:Z

    .line 81
    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 42
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 70
    :goto_0
    return-object v0

    .line 47
    :cond_1
    const-string/jumbo v0, "[*.]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-object v1, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 57
    :cond_2
    const-string/jumbo v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 58
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->trimTrailingBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string/jumbo v0, "http"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_4

    .line 62
    :cond_3
    :goto_1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 60
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 70
    :cond_5
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getDomainAndRegistry()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubdomainsList()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 163
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    .line 171
    :goto_0
    return-object v0

    .line 164
    :cond_0
    add-int/lit8 v1, v0, 0x3

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    .line 170
    :goto_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 171
    add-int/lit8 v3, v3, -0x1

    if-le v3, v1, :cond_2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mHost:Ljava/lang/String;

    move v1, v2

    goto :goto_1

    .line 171
    :cond_2
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static trimTrailingBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->compareTo(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 139
    if-eqz v0, :cond_2

    move v2, v0

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v3, p1, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-nez v3, :cond_3

    move v2, v1

    :cond_3
    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_0

    .line 142
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 144
    if-nez v2, :cond_0

    .line 147
    :cond_7
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getSubdomainsList()[Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-direct {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getSubdomainsList()[Ljava/lang/String;

    move-result-object v5

    .line 149
    array-length v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 150
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    .line 151
    :goto_2
    if-ltz v1, :cond_8

    if-ltz v0, :cond_8

    .line 152
    add-int/lit8 v3, v1, -0x1

    aget-object v2, v4, v1

    add-int/lit8 v1, v0, -0x1

    aget-object v0, v5, v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 153
    if-nez v2, :cond_0

    move v0, v1

    move v1, v3

    .line 154
    goto :goto_2

    .line 155
    :cond_8
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    instance-of v1, p1, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    if-eqz v1, :cond_0

    .line 118
    check-cast p1, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    .line 119
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->compareTo(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOmitProtocolAndPort:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOmitProtocolAndPort:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mHost:Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mHost:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 130
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 129
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->mOriginOrHostPattern:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeUrlMatchesContentSettingsPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

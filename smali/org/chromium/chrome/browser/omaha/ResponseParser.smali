.class public Lorg/chromium/chrome/browser/omaha/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private mAppStatus:Ljava/lang/String;

.field private mDaystartSeconds:Ljava/lang/Integer;

.field private final mExpectInstallEvent:Z

.field private final mExpectPing:Z

.field private final mExpectUpdatecheck:Z

.field private mNewVersion:Ljava/lang/String;

.field private mParsedInstallEvent:Z

.field private mParsedPing:Z

.field private mParsedUpdatecheck:Z

.field private final mStrictParsingMode:Z

.field private mUpdateStatus:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 6

    .prologue
    .line 72
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/omaha/ResponseParser;-><init>(ZLjava/lang/String;ZZZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZZZ)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mStrictParsingMode:Z

    .line 78
    iput-object p2, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mAppId:Ljava/lang/String;

    .line 79
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mExpectInstallEvent:Z

    .line 80
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mExpectPing:Z

    .line 81
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mExpectUpdatecheck:Z

    .line 82
    return-void
.end method

.method private logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Failed to parse: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mStrictParsingMode:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    invoke-direct {v1, v0, p2}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 127
    :cond_0
    const-string/jumbo v1, "ResponseParser"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method private parseAppNode(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v2, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mAppId:Ljava/lang/String;

    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "appid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    and-int/lit8 v2, v0, 0x1

    .line 192
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mAppStatus:Ljava/lang/String;

    .line 193
    const-string/jumbo v0, "ok"

    iget-object v3, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mAppStatus:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    :goto_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 195
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    .line 196
    const-string/jumbo v3, "updatecheck"

    iget-object v4, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseUpdatecheck(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)Z

    move-result v0

    and-int/2addr v2, v0

    .line 194
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_1
    const-string/jumbo v3, "event"

    iget-object v4, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseEvent(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V

    goto :goto_1

    .line 200
    :cond_2
    const-string/jumbo v3, "ping"

    iget-object v4, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parsePing(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V

    goto :goto_1

    .line 204
    :cond_3
    const-string/jumbo v0, "restricted"

    iget-object v3, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mAppStatus:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v1

    .line 210
    :cond_4
    if-eqz v2, :cond_5

    const/4 v0, 0x1

    .line 211
    :goto_2
    return v0

    :cond_5
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    goto :goto_2
.end method

.method private parseDaystartNode(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)Z
    .locals 2

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v1, "elapsed_seconds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mDaystartSeconds:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 183
    :catch_0
    move-exception v0

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    goto :goto_0
.end method

.method private parseEvent(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V
    .locals 3

    .prologue
    .line 251
    const-string/jumbo v1, "ok"

    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v2, "status"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedInstallEvent:Z

    .line 252
    :cond_0
    return-void
.end method

.method private parseManifest(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mNewVersion:Ljava/lang/String;

    .line 272
    return-void
.end method

.method private parsePing(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V
    .locals 3

    .prologue
    .line 247
    const-string/jumbo v1, "ok"

    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v2, "status"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedPing:Z

    .line 248
    :cond_0
    return-void
.end method

.method private parseResponseNode(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)Z
    .locals 6

    .prologue
    .line 146
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v1, "server"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    const-string/jumbo v2, "3.0"

    iget-object v1, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v3, "protocol"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    and-int/lit8 v1, v1, 0x1

    .line 149
    const-string/jumbo v2, "prod"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ResponseParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Server type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 152
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    .line 153
    const-string/jumbo v3, "daystart"

    iget-object v4, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseDaystartNode(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)Z

    move-result v0

    and-int/2addr v2, v0

    .line 151
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 155
    :cond_1
    const-string/jumbo v3, "app"

    iget-object v4, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseAppNode(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)Z

    move-result v0

    and-int/2addr v2, v0

    goto :goto_1

    .line 158
    :cond_2
    const-string/jumbo v3, "ResponseParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Ignoring unknown child of <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :cond_3
    if-nez v2, :cond_4

    .line 163
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    .line 176
    :goto_2
    return v0

    .line 164
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mDaystartSeconds:Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 165
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    goto :goto_2

    .line 166
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mAppStatus:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 167
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    goto :goto_2

    .line 168
    :cond_6
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mExpectInstallEvent:Z

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedInstallEvent:Z

    if-eq v0, v1, :cond_7

    .line 169
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    goto :goto_2

    .line 170
    :cond_7
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mExpectPing:Z

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedPing:Z

    if-eq v0, v1, :cond_8

    .line 171
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    goto :goto_2

    .line 172
    :cond_8
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mExpectUpdatecheck:Z

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedUpdatecheck:Z

    if-eq v0, v1, :cond_9

    .line 173
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    goto :goto_2

    .line 176
    :cond_9
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private parseRootNode(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 133
    const-string/jumbo v2, "response"

    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseResponseNode(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :goto_1
    return-void

    .line 132
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->resetParsedData()V

    .line 141
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    goto :goto_1
.end method

.method private parseUpdatecheck(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 217
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUpdateStatus:Ljava/lang/String;

    .line 218
    const-string/jumbo v0, "ok"

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUpdateStatus:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 220
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    .line 221
    const-string/jumbo v3, "urls"

    iget-object v4, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseUrls(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V

    .line 219
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_1
    const-string/jumbo v3, "manifest"

    iget-object v4, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseManifest(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 230
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    .line 243
    :goto_2
    return v0

    .line 231
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mNewVersion:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 232
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->logError(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;I)Z

    move-result v0

    goto :goto_2

    .line 234
    :cond_4
    const-string/jumbo v0, "noupdate"

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUpdateStatus:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUpdateStatus:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUpdateStatus:Ljava/lang/String;

    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 237
    const-string/jumbo v0, "ResponseParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Ignoring error status for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUpdateStatus:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedUpdatecheck:Z

    move v0, v2

    .line 243
    goto :goto_2

    .line 239
    :cond_6
    const-string/jumbo v0, "ResponseParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Ignoring unknown status for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUpdateStatus:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private parseUrl(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->attributes:Ljava/util/Map;

    const-string/jumbo v1, "codebase"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_1
    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseUrls(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 256
    iget-object v0, p1, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    .line 257
    const-string/jumbo v2, "url"

    iget-object v3, v0, Lorg/chromium/chrome/browser/omaha/XMLParser$Node;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseUrl(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V

    .line 255
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method private resetParsedData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mDaystartSeconds:Ljava/lang/Integer;

    .line 113
    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mNewVersion:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUrl:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUpdateStatus:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mAppStatus:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedInstallEvent:Z

    .line 119
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedPing:Z

    .line 120
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mParsedUpdatecheck:Z

    .line 121
    return-void
.end method


# virtual methods
.method public getNewVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mNewVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ResponseParser;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lorg/chromium/chrome/browser/omaha/XMLParser;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/omaha/XMLParser;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/XMLParser;->getRootNode()Lorg/chromium/chrome/browser/omaha/XMLParser$Node;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseRootNode(Lorg/chromium/chrome/browser/omaha/XMLParser$Node;)V

    .line 88
    return-void
.end method

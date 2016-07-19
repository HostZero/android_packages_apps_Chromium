.class public Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;
.super Ljava/lang/Object;
.source "OMADownloadHandler.java"


# instance fields
.field private final mDescription:Ljava/util/Map;

.field private final mTypes:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mDescription:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mTypes:Ljava/util/List;

    .line 122
    return-void
.end method


# virtual methods
.method addAttributeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mTypes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mDescription:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getDrmType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    const-string/jumbo v2, "application/vnd.oma.drm.message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTypes()Ljava/util/List;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mTypes:Ljava/util/List;

    return-object v0
.end method

.method getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mDescription:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->mTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValueEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

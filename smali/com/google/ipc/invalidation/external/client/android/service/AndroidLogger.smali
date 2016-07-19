.class public Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# static fields
.field private static final MAX_TAG_LENGTH:I = 0x17

.field private static filteringDisabled:Z

.field private static levelToPriority:Ljava/util/Map;

.field private static minimumLogLevel:I


# instance fields
.field private final logPrefix:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 54
    sput-boolean v3, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->filteringDisabled:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    sput-object v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sput v3, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->minimumLogLevel:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->tag:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->logPrefix:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static disableFilteringForTest()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->filteringDisabled:Z

    .line 78
    return-void
.end method

.method public static forPrefix(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->logPrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->logPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/support/customtabs/a;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroid/support/customtabs/a;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTag()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->tag:Ljava/lang/String;

    .line 211
    :goto_0
    return-object v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 188
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    .line 189
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 190
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 193
    const-class v4, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 201
    if-gez v0, :cond_4

    .line 204
    :goto_2
    const/16 v0, 0x24

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 205
    if-gez v0, :cond_2

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    :cond_2
    sub-int v3, v0, v1

    const/16 v4, 0x17

    if-le v3, v4, :cond_3

    .line 209
    add-int/lit8 v0, v1, 0x17

    .line 211
    :cond_3
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method private static levelToPriority(Ljava/util/logging/Level;)I
    .locals 3

    .prologue
    .line 167
    sget-object v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMinimumAndroidLogLevel(I)V
    .locals 0

    .prologue
    .line 220
    sput p0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->minimumLogLevel:I

    .line 221
    return-void
.end method


# virtual methods
.method public varargs fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 155
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 147
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-void
.end method

.method isLoggable(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->filteringDisabled:Z

    if-nez v0, :cond_0

    sget v0, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->minimumLogLevel:I

    if-lt p2, v0, :cond_1

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority(Ljava/util/logging/Level;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {p1}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->levelToPriority(Ljava/util/logging/Level;)I

    move-result v0

    .line 112
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p0, v1, v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return-void
.end method

.method public setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    array-length v0, p2

    if-lez v0, :cond_1

    aget-object v0, p2, v3

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 134
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    array-length v0, p2

    if-lez v0, :cond_1

    aget-object v0, p2, v3

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

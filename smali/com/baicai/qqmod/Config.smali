.class public final Lcom/baicai/qqmod/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "baicai_qq_prefs"

.field private static final PREFIX:Ljava/lang/String; = "feat_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled(Ljava/lang/String;Z)Z
    .locals 3

    .line 40
    invoke-static {}, Lcom/baicai/qqmod/Config;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feat_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public static isVoiceForwardEnabled()Z
    .locals 2

    .line 53
    const-string v0, "voice_forward"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baicai/qqmod/Config;->isEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setEnabled(Ljava/lang/String;Z)V
    .locals 3

    .line 45
    invoke-static {}, Lcom/baicai/qqmod/Config;->sp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feat_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void
.end method

.method public static setVoiceForwardEnabled(Z)V
    .locals 1

    .line 57
    const-string v0, "voice_forward"

    invoke-static {v0, p0}, Lcom/baicai/qqmod/Config;->setEnabled(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method private static sp()Landroid/content/SharedPreferences;
    .locals 3

    .line 33
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    const-string v1, "baicai_qq_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

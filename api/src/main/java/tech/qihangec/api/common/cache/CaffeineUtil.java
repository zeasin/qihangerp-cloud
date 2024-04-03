package tech.qihangec.api.common.cache;


import com.github.benmanes.caffeine.cache.Cache;
import com.github.benmanes.caffeine.cache.Caffeine;

import java.util.Collection;
import java.util.concurrent.TimeUnit;

public class CaffeineUtil {

    /**
     * 缓存的最大容量
     */
    private static final int MAXIMUM_SIZE = 1000;

    /**
     * 缓存项的写入后过期时间
     */
    private static final int EXPIRE_AFTER_WRITE_DURATION = 30;

    /**
     * 过期时间单位（分钟）
     */
    private static final TimeUnit EXPIRE_AFTER_WRITE_TIMEUNIT = TimeUnit.MINUTES;

    private static Cache<String, Object> cache;

    /**
     * 初始化Caffeine缓存配置
     */
    static {
        cache = Caffeine.newBuilder()
                .maximumSize(MAXIMUM_SIZE)
                .expireAfterWrite(EXPIRE_AFTER_WRITE_DURATION, EXPIRE_AFTER_WRITE_TIMEUNIT)
                .build();
    }

    /**
     * 获取缓存值
     *
     * @param key 缓存键
     * @return 缓存值
     */
    public static Object get(String key) {
        return cache.getIfPresent(key);
    }

    /**
     * 设置缓存值
     *
     * @param key   缓存键
     * @param value 缓存值
     */
    public static void put(String key, Object value) {
        cache.put(key, value);
    }

    /**
     * 移除缓存项
     *
     * @param key 缓存键
     */
    public static void remove(String key) {
        cache.invalidate(key);
    }

    /**
     * 清空缓存
     */
    public static void clear() {
        cache.invalidateAll();
    }

    /**
     * 获取缓存中的所有值
     *
     * @return 缓存中的所有值集合
     */
    public static Collection<Object> getAllValues() {
        return cache.asMap().values();
    }

    /**
     * 清空缓存中的所有值
     */
    public static void removeAllValues() {
        cache.invalidateAll();
    }
}

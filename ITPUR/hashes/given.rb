family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select {|k, v| k == :brothers || k == :sisters}
final_array = immediate_family.values.flatten

p final_array
